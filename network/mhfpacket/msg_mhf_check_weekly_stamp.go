package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfCheckWeeklyStamp represents the MSG_MHF_CHECK_WEEKLY_STAMP
type MsgMhfCheckWeeklyStamp struct {
	AckHandle uint32
	StampType string
	Unk1      bool
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfCheckWeeklyStamp) Opcode() network.PacketID {
	return network.MSG_MHF_CHECK_WEEKLY_STAMP
}

// Parse parses the packet from binary
func (m *MsgMhfCheckWeeklyStamp) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	stampType := bf.ReadUint8()
	switch stampType {
	case 1:
		m.StampType = "hl"
	case 2:
		m.StampType = "ex"
	}
	m.Unk1 = bf.ReadBool()
	bf.ReadUint16() // Zeroed
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfCheckWeeklyStamp) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

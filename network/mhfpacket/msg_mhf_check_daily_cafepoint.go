package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfCheckDailyCafepoint represents the MSG_MHF_CHECK_DAILY_CAFEPOINT
type MsgMhfCheckDailyCafepoint struct {
	AckHandle uint32
	Unk       uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfCheckDailyCafepoint) Opcode() network.PacketID {
	return network.MSG_MHF_CHECK_DAILY_CAFEPOINT
}

// Parse parses the packet from binary
func (m *MsgMhfCheckDailyCafepoint) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Unk = bf.ReadUint32()
	return nil
}

func (m *MsgMhfCheckDailyCafepoint) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

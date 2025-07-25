package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetStepupStatus represents the MSG_MHF_GET_STEPUP_STATUS
type MsgMhfGetStepupStatus struct {
	AckHandle uint32
	GachaID   uint32
	Unk       uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetStepupStatus) Opcode() network.PacketID {
	return network.MSG_MHF_GET_STEPUP_STATUS
}

// Parse parses the packet from binary
func (m *MsgMhfGetStepupStatus) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.GachaID = bf.ReadUint32()
	m.Unk = bf.ReadUint8()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetStepupStatus) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

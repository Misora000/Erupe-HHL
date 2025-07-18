package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfInfoFesta represents the MSG_MHF_INFO_FESTA
type MsgMhfInfoFesta struct {
	AckHandle uint32
	Unk0      uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfInfoFesta) Opcode() network.PacketID {
	return network.MSG_MHF_INFO_FESTA
}

// Parse parses the packet from binary
func (m *MsgMhfInfoFesta) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Unk0 = bf.ReadUint8()
	bf.ReadUint8() // Zeroed
	bf.ReadUint8() // Zeroed
	bf.ReadUint8() // Zeroed
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfInfoFesta) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

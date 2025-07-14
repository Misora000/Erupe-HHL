package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetTinyBin represents the MSG_MHF_GET_TINY_BIN
type MsgMhfGetTinyBin struct {
	// Communicator type, multi-format. This might be valid for only one type.
	AckHandle uint32
	Unk0      uint8
	Unk1      uint8
	Unk2      uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetTinyBin) Opcode() network.PacketID {
	return network.MSG_MHF_GET_TINY_BIN
}

// Parse parses the packet from binary
func (m *MsgMhfGetTinyBin) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Unk0 = bf.ReadUint8()
	m.Unk1 = bf.ReadUint8()
	m.Unk2 = bf.ReadUint8()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetTinyBin) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfPostTinyBin represents the MSG_MHF_POST_TINY_BIN
type MsgMhfPostTinyBin struct {
	AckHandle uint32
	Unk0      uint8
	Unk1      uint8
	Unk2      uint8
	Unk3      uint8
	Data      []byte
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfPostTinyBin) Opcode() network.PacketID {
	return network.MSG_MHF_POST_TINY_BIN
}

// Parse parses the packet from binary
func (m *MsgMhfPostTinyBin) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Unk0 = bf.ReadUint8()
	m.Unk1 = bf.ReadUint8()
	m.Unk2 = bf.ReadUint8()
	m.Unk3 = bf.ReadUint8()
	m.Data = bf.ReadBytes(uint(bf.ReadUint16()))
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfPostTinyBin) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

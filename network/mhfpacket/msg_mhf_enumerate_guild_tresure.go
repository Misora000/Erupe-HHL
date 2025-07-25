package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateGuildTresure represents the MSG_MHF_ENUMERATE_GUILD_TRESURE
type MsgMhfEnumerateGuildTresure struct {
	AckHandle uint32
	MaxHunts  uint16
	Unk0      uint16
	Unk1      uint16
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateGuildTresure) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_GUILD_TRESURE
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateGuildTresure) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.MaxHunts = bf.ReadUint16()
	m.Unk0 = bf.ReadUint16()
	m.Unk1 = bf.ReadUint16()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateGuildTresure) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGenerateUdGuildMap represents the MSG_MHF_GENERATE_UD_GUILD_MAP
type MsgMhfGenerateUdGuildMap struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGenerateUdGuildMap) Opcode() network.PacketID {
	return network.MSG_MHF_GENERATE_UD_GUILD_MAP
}

// Parse parses the packet from binary
func (m *MsgMhfGenerateUdGuildMap) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGenerateUdGuildMap) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetGuildTargetMemberNum represents the MSG_MHF_GET_GUILD_TARGET_MEMBER_NUM
type MsgMhfGetGuildTargetMemberNum struct {
	AckHandle uint32
	GuildID   uint32
	Unk       uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetGuildTargetMemberNum) Opcode() network.PacketID {
	return network.MSG_MHF_GET_GUILD_TARGET_MEMBER_NUM
}

// Parse parses the packet from binary
func (m *MsgMhfGetGuildTargetMemberNum) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.GuildID = bf.ReadUint32()
	m.Unk = bf.ReadUint8()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetGuildTargetMemberNum) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetUdTacticsRemainingPoint represents the MSG_MHF_GET_UD_TACTICS_REMAINING_POINT
type MsgMhfGetUdTacticsRemainingPoint struct {
	AckHandle uint32
	Unk0      uint32 // GuildID?
	Unk1      uint32
	Unk2      uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetUdTacticsRemainingPoint) Opcode() network.PacketID {
	return network.MSG_MHF_GET_UD_TACTICS_REMAINING_POINT
}

// Parse parses the packet from binary
func (m *MsgMhfGetUdTacticsRemainingPoint) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Unk0 = bf.ReadUint32()
	m.Unk1 = bf.ReadUint32()
	m.Unk2 = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetUdTacticsRemainingPoint) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetUdTacticsRewardList represents the MSG_MHF_GET_UD_TACTICS_REWARD_LIST
type MsgMhfGetUdTacticsRewardList struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetUdTacticsRewardList) Opcode() network.PacketID {
	return network.MSG_MHF_GET_UD_TACTICS_REWARD_LIST
}

// Parse parses the packet from binary
func (m *MsgMhfGetUdTacticsRewardList) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetUdTacticsRewardList) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

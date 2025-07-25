package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfSetUdTacticsFollower represents the MSG_MHF_SET_UD_TACTICS_FOLLOWER
type MsgMhfSetUdTacticsFollower struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfSetUdTacticsFollower) Opcode() network.PacketID {
	return network.MSG_MHF_SET_UD_TACTICS_FOLLOWER
}

// Parse parses the packet from binary
func (m *MsgMhfSetUdTacticsFollower) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfSetUdTacticsFollower) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

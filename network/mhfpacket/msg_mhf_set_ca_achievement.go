package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfSetCaAchievement represents the MSG_MHF_SET_CA_ACHIEVEMENT
type MsgMhfSetCaAchievement struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfSetCaAchievement) Opcode() network.PacketID {
	return network.MSG_MHF_SET_CA_ACHIEVEMENT
}

// Parse parses the packet from binary
func (m *MsgMhfSetCaAchievement) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfSetCaAchievement) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

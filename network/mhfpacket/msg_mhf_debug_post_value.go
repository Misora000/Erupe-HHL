package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfDebugPostValue represents the MSG_MHF_DEBUG_POST_VALUE
type MsgMhfDebugPostValue struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfDebugPostValue) Opcode() network.PacketID {
	return network.MSG_MHF_DEBUG_POST_VALUE
}

// Parse parses the packet from binary
func (m *MsgMhfDebugPostValue) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfDebugPostValue) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysCleanupObject represents the MSG_SYS_CLEANUP_OBJECT
type MsgSysCleanupObject struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysCleanupObject) Opcode() network.PacketID {
	return network.MSG_SYS_CLEANUP_OBJECT
}

// Parse parses the packet from binary
func (m *MsgSysCleanupObject) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	// This packet has no data.
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysCleanupObject) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	// This packet has no data.
	return nil
}

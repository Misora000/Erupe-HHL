package mhfpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysNop represents the MSG_SYS_NOP
type MsgSysNop struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysNop) Opcode() network.PacketID {
	return network.MSG_SYS_NOP
}

// Parse parses the packet from binary
func (m *MsgSysNop) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	// No data aside from opcode.
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysNop) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	// No data aside from opcode.
	return nil
}

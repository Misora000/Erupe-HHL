package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysTransBinary represents the MSG_SYS_TRANS_BINARY
type MsgSysTransBinary struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysTransBinary) Opcode() network.PacketID {
	return network.MSG_SYS_TRANS_BINARY
}

// Parse parses the packet from binary
func (m *MsgSysTransBinary) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysTransBinary) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysEcho represents the MSG_SYS_ECHO
type MsgSysEcho struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysEcho) Opcode() network.PacketID {
	return network.MSG_SYS_ECHO
}

// Parse parses the packet from binary
func (m *MsgSysEcho) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysEcho) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

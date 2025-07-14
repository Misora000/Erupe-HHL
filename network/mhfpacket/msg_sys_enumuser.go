package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysEnumuser represents the MSG_SYS_ENUMUSER
type MsgSysEnumuser struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysEnumuser) Opcode() network.PacketID {
	return network.MSG_SYS_ENUMUSER
}

// Parse parses the packet from binary
func (m *MsgSysEnumuser) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysEnumuser) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

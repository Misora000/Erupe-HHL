package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysEnumlobby represents the MSG_SYS_ENUMLOBBY
type MsgSysEnumlobby struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysEnumlobby) Opcode() network.PacketID {
	return network.MSG_SYS_ENUMLOBBY
}

// Parse parses the packet from binary
func (m *MsgSysEnumlobby) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysEnumlobby) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

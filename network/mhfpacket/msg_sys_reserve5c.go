package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve5C represents the MSG_SYS_reserve5C
type MsgSysReserve5C struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve5C) Opcode() network.PacketID {
	return network.MSG_SYS_reserve5C
}

// Parse parses the packet from binary
func (m *MsgSysReserve5C) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve5C) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

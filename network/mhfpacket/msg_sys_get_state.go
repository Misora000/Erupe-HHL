package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysGetState represents the MSG_SYS_GET_STATE
type MsgSysGetState struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysGetState) Opcode() network.PacketID {
	return network.MSG_SYS_GET_STATE
}

// Parse parses the packet from binary
func (m *MsgSysGetState) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysGetState) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

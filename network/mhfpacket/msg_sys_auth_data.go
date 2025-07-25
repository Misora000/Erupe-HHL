package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysAuthData represents the MSG_SYS_AUTH_DATA
type MsgSysAuthData struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysAuthData) Opcode() network.PacketID {
	return network.MSG_SYS_AUTH_DATA
}

// Parse parses the packet from binary
func (m *MsgSysAuthData) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysAuthData) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

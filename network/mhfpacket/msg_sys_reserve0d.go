package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve0D represents the MSG_SYS_reserve0D
type MsgSysReserve0D struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve0D) Opcode() network.PacketID {
	return network.MSG_SYS_reserve0D
}

// Parse parses the packet from binary
func (m *MsgSysReserve0D) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve0D) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve1A6 represents the MSG_SYS_reserve1A6
type MsgSysReserve1A6 struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve1A6) Opcode() network.PacketID {
	return network.MSG_SYS_reserve1A6
}

// Parse parses the packet from binary
func (m *MsgSysReserve1A6) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve1A6) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

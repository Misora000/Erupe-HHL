package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve1AA represents the MSG_SYS_reserve1AA
type MsgSysReserve1AA struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve1AA) Opcode() network.PacketID {
	return network.MSG_SYS_reserve1AA
}

// Parse parses the packet from binary
func (m *MsgSysReserve1AA) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve1AA) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

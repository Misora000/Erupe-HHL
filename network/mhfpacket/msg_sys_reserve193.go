package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve193 represents the MSG_SYS_reserve193
type MsgSysReserve193 struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve193) Opcode() network.PacketID {
	return network.MSG_SYS_reserve193
}

// Parse parses the packet from binary
func (m *MsgSysReserve193) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve193) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

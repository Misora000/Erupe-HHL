package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve75 represents the MSG_SYS_reserve75
type MsgSysReserve75 struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve75) Opcode() network.PacketID {
	return network.MSG_SYS_reserve75
}

// Parse parses the packet from binary
func (m *MsgSysReserve75) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve75) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

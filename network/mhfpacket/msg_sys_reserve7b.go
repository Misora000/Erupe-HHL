package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysReserve7B represents the MSG_SYS_reserve7B
type MsgSysReserve7B struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysReserve7B) Opcode() network.PacketID {
	return network.MSG_SYS_reserve7B
}

// Parse parses the packet from binary
func (m *MsgSysReserve7B) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysReserve7B) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysUnreserveStage represents the MSG_SYS_UNRESERVE_STAGE
type MsgSysUnreserveStage struct {
	// Contains no fields.
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysUnreserveStage) Opcode() network.PacketID {
	return network.MSG_SYS_UNRESERVE_STAGE
}

// Parse parses the packet from binary
func (m *MsgSysUnreserveStage) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysUnreserveStage) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return nil
}

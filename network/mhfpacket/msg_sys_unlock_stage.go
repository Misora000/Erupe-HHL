package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysUnlockStage represents the MSG_SYS_UNLOCK_STAGE
type MsgSysUnlockStage struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysUnlockStage) Opcode() network.PacketID {
	return network.MSG_SYS_UNLOCK_STAGE
}

// Parse parses the packet from binary
func (m *MsgSysUnlockStage) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	bf.ReadUint16() // Zeroed
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysUnlockStage) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

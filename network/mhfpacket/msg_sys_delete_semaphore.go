package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysDeleteSemaphore represents the MSG_SYS_DELETE_SEMAPHORE
type MsgSysDeleteSemaphore struct {
	SemaphoreID uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysDeleteSemaphore) Opcode() network.PacketID {
	return network.MSG_SYS_DELETE_SEMAPHORE
}

// Parse parses the packet from binary
func (m *MsgSysDeleteSemaphore) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.SemaphoreID = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysDeleteSemaphore) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

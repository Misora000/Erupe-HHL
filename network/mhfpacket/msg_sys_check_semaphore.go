package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/bfutil"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysCheckSemaphore represents the MSG_SYS_CHECK_SEMAPHORE
type MsgSysCheckSemaphore struct {
	AckHandle   uint32
	SemaphoreID string
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysCheckSemaphore) Opcode() network.PacketID {
	return network.MSG_SYS_CHECK_SEMAPHORE
}

// Parse parses the packet from binary
func (m *MsgSysCheckSemaphore) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	semaphoreIDLength := bf.ReadUint8()
	m.SemaphoreID = string(bfutil.UpToNull(bf.ReadBytes(uint(semaphoreIDLength))))
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysCheckSemaphore) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

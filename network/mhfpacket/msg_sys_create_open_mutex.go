package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysCreateOpenMutex represents the MSG_SYS_CREATE_OPEN_MUTEX
type MsgSysCreateOpenMutex struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysCreateOpenMutex) Opcode() network.PacketID {
	return network.MSG_SYS_CREATE_OPEN_MUTEX
}

// Parse parses the packet from binary
func (m *MsgSysCreateOpenMutex) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysCreateOpenMutex) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

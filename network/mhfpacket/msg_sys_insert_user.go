package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysInsertUser represents the MSG_SYS_INSERT_USER
type MsgSysInsertUser struct {
	CharID uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysInsertUser) Opcode() network.PacketID {
	return network.MSG_SYS_INSERT_USER
}

// Parse parses the packet from binary
func (m *MsgSysInsertUser) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysInsertUser) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	bf.WriteUint32(m.CharID)
	return nil
}

package mhfpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysPing represents the MSG_SYS_PING
type MsgSysPing struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysPing) Opcode() network.PacketID {
	return network.MSG_SYS_PING
}

// Parse parses the packet from binary
func (m *MsgSysPing) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysPing) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	bf.WriteUint32(m.AckHandle)
	return nil
}

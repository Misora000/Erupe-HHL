package mhfpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysNotifyUserBinary represents the MSG_SYS_NOTIFY_USER_BINARY
type MsgSysNotifyUserBinary struct {
	CharID     uint32
	BinaryType uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysNotifyUserBinary) Opcode() network.PacketID {
	return network.MSG_SYS_NOTIFY_USER_BINARY
}

// Parse parses the packet from binary
func (m *MsgSysNotifyUserBinary) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.CharID = bf.ReadUint32()
	m.BinaryType = bf.ReadUint8()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysNotifyUserBinary) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	bf.WriteUint32(m.CharID)
	bf.WriteUint8(m.BinaryType)
	return nil
}

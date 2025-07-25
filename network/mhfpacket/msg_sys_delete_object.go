package mhfpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysDeleteObject represents the MSG_SYS_DELETE_OBJECT
type MsgSysDeleteObject struct {
	ObjID uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysDeleteObject) Opcode() network.PacketID {
	return network.MSG_SYS_DELETE_OBJECT
}

// Parse parses the packet from binary
func (m *MsgSysDeleteObject) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.ObjID = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysDeleteObject) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	bf.WriteUint32(m.ObjID)
	return nil
}

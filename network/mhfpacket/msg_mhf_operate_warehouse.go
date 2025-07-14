package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/stringsupport"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfOperateWarehouse represents the MSG_MHF_OPERATE_WAREHOUSE
type MsgMhfOperateWarehouse struct {
	AckHandle uint32
	Operation uint8
	BoxType   uint8
	BoxIndex  uint8
	Name      string
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfOperateWarehouse) Opcode() network.PacketID {
	return network.MSG_MHF_OPERATE_WAREHOUSE
}

// Parse parses the packet from binary
func (m *MsgMhfOperateWarehouse) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Operation = bf.ReadUint8()
	m.BoxType = bf.ReadUint8()
	m.BoxIndex = bf.ReadUint8()
	lenName := bf.ReadUint8()
	bf.ReadUint16() // Zeroed
	if lenName > 0 {
		m.Name = stringsupport.SJISToUTF8(bf.ReadNullTerminatedBytes())
	}
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfOperateWarehouse) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

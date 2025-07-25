package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysCastBinary represents the MSG_SYS_CAST_BINARY
type MsgSysCastBinary struct {
	Unk            uint32
	BroadcastType  uint8
	MessageType    uint8
	RawDataPayload []byte
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysCastBinary) Opcode() network.PacketID {
	return network.MSG_SYS_CAST_BINARY
}

// Parse parses the packet from binary
func (m *MsgSysCastBinary) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.Unk = bf.ReadUint32()
	m.BroadcastType = bf.ReadUint8()
	m.MessageType = bf.ReadUint8()
	dataSize := bf.ReadUint16()
	m.RawDataPayload = bf.ReadBytes(uint(dataSize))
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysCastBinary) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

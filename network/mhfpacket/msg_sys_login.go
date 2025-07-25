package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysLogin represents the MSG_SYS_LOGIN
type MsgSysLogin struct {
	AckHandle        uint32
	CharID0          uint32
	LoginTokenNumber uint32
	HardcodedZero0   uint16
	RequestVersion   uint16
	CharID1          uint32
	LoginTokenString string
}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysLogin) Opcode() network.PacketID {
	return network.MSG_SYS_LOGIN
}

// Parse parses the packet from binary
func (m *MsgSysLogin) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.CharID0 = bf.ReadUint32()
	m.LoginTokenNumber = bf.ReadUint32()
	m.HardcodedZero0 = bf.ReadUint16()
	m.RequestVersion = bf.ReadUint16()
	m.CharID1 = bf.ReadUint32()
	bf.ReadUint16() // Zeroed
	bf.ReadUint16() // Always 11
	m.LoginTokenString = string(bf.ReadNullTerminatedBytes())
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgSysLogin) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

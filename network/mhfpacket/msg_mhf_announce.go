package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfAnnounce represents the MSG_MHF_ANNOUNCE
type MsgMhfAnnounce struct {
	AckHandle uint32
	IPAddress uint32
	Port      uint16
	StageID   []byte
	Data      *byteframe.ByteFrame
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfAnnounce) Opcode() network.PacketID {
	return network.MSG_MHF_ANNOUNCE
}

// Parse parses the packet from binary
func (m *MsgMhfAnnounce) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.IPAddress = bf.ReadUint32()
	m.Port = bf.ReadUint16()
	_ = bf.ReadUint8()
	_ = bf.ReadUint8()
	_ = bf.ReadUint8()
	m.StageID = bf.ReadBytes(32)
	m.Data = byteframe.NewByteFrameFromBytes(bf.ReadBytes(uint(bf.ReadUint32())))
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfAnnounce) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

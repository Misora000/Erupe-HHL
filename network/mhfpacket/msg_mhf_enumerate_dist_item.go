package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	_config "github.com/Misora000/Erupe-HHL/config"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateDistItem represents the MSG_MHF_ENUMERATE_DIST_ITEM
type MsgMhfEnumerateDistItem struct {
	AckHandle uint32
	DistType  uint8
	Unk1      uint8
	Unk2      uint16
	Unk3      []byte
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateDistItem) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_DIST_ITEM
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateDistItem) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.DistType = bf.ReadUint8()
	m.Unk1 = bf.ReadUint8()
	m.Unk2 = bf.ReadUint16() // Maximum? Hardcoded to 256
	if _config.ErupeConfig.RealClientMode >= _config.Z1 {
		m.Unk3 = bf.ReadBytes(uint(bf.ReadUint8()))
	}
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateDistItem) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

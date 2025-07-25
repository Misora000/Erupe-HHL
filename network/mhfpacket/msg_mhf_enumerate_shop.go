package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	_config "github.com/Misora000/Erupe-HHL/config"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateShop represents the MSG_MHF_ENUMERATE_SHOP
type MsgMhfEnumerateShop struct {
	AckHandle uint32
	ShopType  uint8 // 1 running gachas, 10 normal shop extensions, 8 Diva Defense shop
	ShopID    uint32
	Limit     uint16
	Unk3      uint8
	Unk4      uint8
	Unk5      uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateShop) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_SHOP
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateShop) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.ShopType = bf.ReadUint8()
	m.ShopID = bf.ReadUint32()
	m.Limit = bf.ReadUint16()
	m.Unk3 = bf.ReadUint8()
	if _config.ErupeConfig.RealClientMode >= _config.G2 {
		m.Unk4 = bf.ReadUint8()
		m.Unk5 = bf.ReadUint32()
	}
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateShop) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

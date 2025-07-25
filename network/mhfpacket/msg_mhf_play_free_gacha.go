package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfPlayFreeGacha represents the MSG_MHF_PLAY_FREE_GACHA
type MsgMhfPlayFreeGacha struct {
	AckHandle uint32
	GachaID   uint32
	GachaType uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfPlayFreeGacha) Opcode() network.PacketID {
	return network.MSG_MHF_PLAY_FREE_GACHA
}

// Parse parses the packet from binary
func (m *MsgMhfPlayFreeGacha) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.GachaID = bf.ReadUint32()
	m.GachaType = bf.ReadUint8()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfPlayFreeGacha) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfPlayBoxGacha represents the MSG_MHF_PLAY_BOX_GACHA
type MsgMhfPlayBoxGacha struct {
	AckHandle uint32
	GachaID   uint32
	RollType  uint8
	GachaType uint8
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfPlayBoxGacha) Opcode() network.PacketID {
	return network.MSG_MHF_PLAY_BOX_GACHA
}

// Parse parses the packet from binary
func (m *MsgMhfPlayBoxGacha) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.GachaID = bf.ReadUint32()
	m.RollType = bf.ReadUint8()
	m.GachaType = bf.ReadUint8()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfPlayBoxGacha) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

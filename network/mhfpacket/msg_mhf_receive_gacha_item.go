package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfReceiveGachaItem represents the MSG_MHF_RECEIVE_GACHA_ITEM
type MsgMhfReceiveGachaItem struct {
	AckHandle uint32
	Max       uint8
	Freeze    bool
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfReceiveGachaItem) Opcode() network.PacketID {
	return network.MSG_MHF_RECEIVE_GACHA_ITEM
}

// Parse parses the packet from binary
func (m *MsgMhfReceiveGachaItem) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Max = bf.ReadUint8()
	m.Freeze = bf.ReadBool()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfReceiveGachaItem) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

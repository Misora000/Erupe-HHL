package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfResetBoxGachaInfo represents the MSG_MHF_RESET_BOX_GACHA_INFO
type MsgMhfResetBoxGachaInfo struct {
	AckHandle uint32
	GachaID   uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfResetBoxGachaInfo) Opcode() network.PacketID {
	return network.MSG_MHF_RESET_BOX_GACHA_INFO
}

// Parse parses the packet from binary
func (m *MsgMhfResetBoxGachaInfo) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.GachaID = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfResetBoxGachaInfo) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

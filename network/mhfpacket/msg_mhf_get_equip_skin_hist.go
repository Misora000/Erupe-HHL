package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetEquipSkinHist represents the MSG_MHF_GET_EQUIP_SKIN_HIST
type MsgMhfGetEquipSkinHist struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetEquipSkinHist) Opcode() network.PacketID {
	return network.MSG_MHF_GET_EQUIP_SKIN_HIST
}

// Parse parses the packet from binary
func (m *MsgMhfGetEquipSkinHist) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetEquipSkinHist) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

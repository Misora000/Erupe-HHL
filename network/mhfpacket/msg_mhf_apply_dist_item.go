package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	_config "github.com/Misora000/Erupe-HHL/config"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfApplyDistItem represents the MSG_MHF_APPLY_DIST_ITEM
type MsgMhfApplyDistItem struct {
	AckHandle        uint32
	DistributionType uint8
	DistributionID   uint32
	Unk2             uint32
	Unk3             uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfApplyDistItem) Opcode() network.PacketID {
	return network.MSG_MHF_APPLY_DIST_ITEM
}

// Parse parses the packet from binary
func (m *MsgMhfApplyDistItem) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.DistributionType = bf.ReadUint8()
	m.DistributionID = bf.ReadUint32()
	if _config.ErupeConfig.RealClientMode >= _config.G8 {
		m.Unk2 = bf.ReadUint32()
	}
	if _config.ErupeConfig.RealClientMode >= _config.G10 {
		m.Unk3 = bf.ReadUint32()
	}
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfApplyDistItem) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

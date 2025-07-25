package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfReadMercenaryM represents the MSG_MHF_READ_MERCENARY_M
type MsgMhfReadMercenaryM struct {
	AckHandle uint32
	CharID    uint32
	MercID    uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfReadMercenaryM) Opcode() network.PacketID {
	return network.MSG_MHF_READ_MERCENARY_M
}

// Parse parses the packet from binary
func (m *MsgMhfReadMercenaryM) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.CharID = bf.ReadUint32()
	m.MercID = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfReadMercenaryM) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

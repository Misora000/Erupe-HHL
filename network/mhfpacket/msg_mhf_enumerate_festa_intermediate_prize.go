package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateFestaIntermediatePrize represents the MSG_MHF_ENUMERATE_FESTA_INTERMEDIATE_PRIZE
type MsgMhfEnumerateFestaIntermediatePrize struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateFestaIntermediatePrize) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_FESTA_INTERMEDIATE_PRIZE
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateFestaIntermediatePrize) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateFestaIntermediatePrize) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

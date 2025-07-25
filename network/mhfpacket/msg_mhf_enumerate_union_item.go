package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateUnionItem represents the MSG_MHF_ENUMERATE_UNION_ITEM
type MsgMhfEnumerateUnionItem struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateUnionItem) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_UNION_ITEM
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateUnionItem) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	bf.ReadUint8() // Zeroed
	bf.ReadUint8() // Zeroed
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateUnionItem) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

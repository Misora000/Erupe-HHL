package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateMercenaryLog represents the MSG_MHF_ENUMERATE_MERCENARY_LOG
type MsgMhfEnumerateMercenaryLog struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateMercenaryLog) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_MERCENARY_LOG
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateMercenaryLog) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateMercenaryLog) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfEnumerateRengokuRanking represents the MSG_MHF_ENUMERATE_RENGOKU_RANKING
type MsgMhfEnumerateRengokuRanking struct {
	AckHandle   uint32
	Leaderboard uint32
	Unk1        uint16 // Hardcoded 0 in the binary
	Unk2        uint16 // Hardcoded 00 01 in the binary
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfEnumerateRengokuRanking) Opcode() network.PacketID {
	return network.MSG_MHF_ENUMERATE_RENGOKU_RANKING
}

// Parse parses the packet from binary
func (m *MsgMhfEnumerateRengokuRanking) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.Leaderboard = bf.ReadUint32()
	m.Unk1 = bf.ReadUint16()
	m.Unk2 = bf.ReadUint16()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfEnumerateRengokuRanking) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

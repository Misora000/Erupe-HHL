package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfAcquireTournament represents the MSG_MHF_ACQUIRE_TOURNAMENT
type MsgMhfAcquireTournament struct {
	AckHandle    uint32
	TournamentID uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfAcquireTournament) Opcode() network.PacketID {
	return network.MSG_MHF_ACQUIRE_TOURNAMENT
}

// Parse parses the packet from binary
func (m *MsgMhfAcquireTournament) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	m.TournamentID = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfAcquireTournament) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

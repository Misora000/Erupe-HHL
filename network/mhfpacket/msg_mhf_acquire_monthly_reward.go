package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfAcquireMonthlyReward represents the MSG_MHF_ACQUIRE_MONTHLY_REWARD
type MsgMhfAcquireMonthlyReward struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfAcquireMonthlyReward) Opcode() network.PacketID {
	return network.MSG_MHF_ACQUIRE_MONTHLY_REWARD
}

// Parse parses the packet from binary
func (m *MsgMhfAcquireMonthlyReward) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfAcquireMonthlyReward) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

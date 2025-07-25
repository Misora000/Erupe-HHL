package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfGetKeepLoginBoostStatus represents the MSG_MHF_GET_KEEP_LOGIN_BOOST_STATUS
type MsgMhfGetKeepLoginBoostStatus struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfGetKeepLoginBoostStatus) Opcode() network.PacketID {
	return network.MSG_MHF_GET_KEEP_LOGIN_BOOST_STATUS
}

// Parse parses the packet from binary
func (m *MsgMhfGetKeepLoginBoostStatus) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfGetKeepLoginBoostStatus) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

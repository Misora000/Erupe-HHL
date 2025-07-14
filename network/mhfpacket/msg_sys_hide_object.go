package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgSysHideObject represents the MSG_SYS_HIDE_OBJECT
type MsgSysHideObject struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgSysHideObject) Opcode() network.PacketID {
	return network.MSG_SYS_HIDE_OBJECT
}

// Parse parses the packet from binary
func (m *MsgSysHideObject) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgSysHideObject) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

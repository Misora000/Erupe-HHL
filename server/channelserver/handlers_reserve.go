package channelserver

import "github.com/Misora000/Erupe-HHL/network/mhfpacket"

func handleMsgSysReserve188(s *Session, p mhfpacket.MHFPacket) {
	pkt := p.(*mhfpacket.MsgSysReserve188)

	// Left as raw bytes because I couldn't easily find the request or resp parser function in the binary.
	doAckBufSucceed(s, pkt.AckHandle, []byte{0x00, 0x00, 0x00, 0x00})
}

func handleMsgSysReserve18B(s *Session, p mhfpacket.MHFPacket) {
	pkt := p.(*mhfpacket.MsgSysReserve18B)

	// Left as raw bytes because I couldn't easily find the request or resp parser function in the binary.
	doAckBufSucceed(s, pkt.AckHandle, []byte{0x00, 0x00, 0x00, 0x3C})
}

func handleMsgSysReserve55(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve56(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve57(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve01(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve02(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve03(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve04(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve05(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve06(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve07(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve0C(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve0D(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve0E(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve4A(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve4B(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve4C(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve4D(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve4E(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve4F(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve5C(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve5E(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve5F(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve71(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve72(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve73(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve74(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve75(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve76(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve77(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve78(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve79(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve7A(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve7B(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve7C(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve7E(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgMhfReserve10F(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve180(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve18E(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve18F(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve19E(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve19F(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1A4(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1A6(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1A7(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1A8(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1A9(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1AA(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1AB(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1AC(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1AD(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1AE(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve1AF(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve19B(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve192(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve193(s *Session, p mhfpacket.MHFPacket) {}

func handleMsgSysReserve194(s *Session, p mhfpacket.MHFPacket) {}

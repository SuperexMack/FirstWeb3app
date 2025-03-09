"use client"

import { useState } from "react";
import { useContractRead, useContractWrite, usePrepareContractWrite } from "wagmi";
import { sepolia } from "wagmi/chains";
import { abi } from "../abi/Counter.json"; // Save ABI from Foundry deployment

const contractAddress = "YOUR_DEPLOYED_CONTRACT_ADDRESS";

export default function Counter() {
  const { data: count } = useContractRead({
    address: contractAddress,
    abi,
    functionName: "getCount",
  });

  const { config } = usePrepareContractWrite({
    address: contractAddress,
    abi,
    functionName: "adder",
  });
  const { write } = useContractWrite(config);

  return (
    <div>
      <h1>Counter: {count?.toString()}</h1>
      <button onClick={() => write?.()}>Increment</button>
    </div>
  );
}

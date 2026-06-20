# project-bedrock

### Infrastructure State Verification

The screenshot below shows the output of `terraform plan` after successfully deploying the infrastructure.

The message **"No changes. Your infrastructure matches the configuration."** confirms that Terraform's state file is fully synchronized with the actual AWS infrastructure. This means all resources have been provisioned successfully and no additional changes are required.

This demonstrates that the Infrastructure as Code (IaC) deployment is complete and reproducible.

<img width="1439" height="884" alt="Screenshot 2026-06-20 at 13 42 24" src="https://github.com/user-attachments/assets/a3c9b528-e00e-48ff-89e7-7e078a694ce6" />


### Kubernetes Cluster Health

The following screenshot verifies that all Amazon EKS worker nodes are in the **Ready** state.

This confirms that:

* The worker nodes successfully joined the Amazon EKS control plane.
* The Kubernetes networking components are functioning correctly.
* The cluster is ready to schedule and run workloads.

Having all nodes in the **Ready** state is a key indicator that the Kubernetes cluster is healthy and operational.

<img width="1439" height="884" alt="Screenshot 2026-06-20 at 13 43 59" src="https://github.com/user-attachments/assets/1f1ffedf-b8f4-4ad9-a278-425ce49670b1" />

### System Pods Verification

The screenshot below displays the running pods within the Kubernetes cluster.

The successful deployment of the following core components confirms that the cluster is functioning correctly:

* **CoreDNS** – provides internal DNS resolution for Kubernetes services.
* **AWS VPC CNI** – enables pod networking using Amazon VPC networking.
* **kube-proxy** – manages network routing between Kubernetes services and pods.

Additionally, the successful deployment of the sample **Nginx** application demonstrates that workloads can be scheduled and executed successfully on the cluster.

<img width="1439" height="884" alt="Screenshot 2026-06-20 at 13 43 59" src="https://github.com/user-attachments/assets/e1fccf8b-2d54-4aaa-8d17-24ea1de69b14" />

